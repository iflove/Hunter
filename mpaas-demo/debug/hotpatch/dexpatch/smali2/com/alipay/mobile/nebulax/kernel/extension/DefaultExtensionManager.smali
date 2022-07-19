.class public Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;
.super Ljava/lang/Object;
.source "DefaultExtensionManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:ExtensionManager"


# instance fields
.field private mAccessController:Lcom/alipay/mobile/nebulax/kernel/security/AccessController;

.field private final mExtensionFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

.field private final mExtensionSorterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Ljava/util/Comparator;",
            ">;"
        }
    .end annotation
.end field

.field private final mNodeExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

.field private final mSingletonExtensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/security/AccessController;Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionFilterMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionSorterMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mAccessController:Lcom/alipay/mobile/nebulax/kernel/security/AccessController;

    .line 41
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    .line 42
    iput-object p3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    .line 43
    return-void
.end method

.method private static createExtensionInstance(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createExtensionInstance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXKernel:ExtensionManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    .line 273
    invoke-interface {p0}, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;->onInitialized()V

    .line 274
    return-object p0
.end method

.method private declared-synchronized findExtensions(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;->findExtensions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    if-nez p2, :cond_0

    .line 223
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 226
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 228
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 229
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;->getScope(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 231
    if-nez v2, :cond_2

    .line 233
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_1

    .line 235
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    goto :goto_2

    .line 239
    :cond_2
    move-object v3, p1

    .line 240
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 241
    invoke-interface {v3}, Lcom/alipay/mobile/nebulax/kernel/node/Node;->getParentNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v3

    goto :goto_1

    .line 243
    :cond_3
    if-eqz v3, :cond_4

    .line 244
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1

    .line 245
    if-eqz v1, :cond_4

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :cond_4
    :goto_2
    goto :goto_0

    .line 251
    :cond_5
    monitor-exit p0

    return-object v0

    .line 220
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;"
        }
    .end annotation

    .line 255
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 258
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    .line 259
    if-nez v0, :cond_1

    .line 261
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v0

    .line 262
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    goto :goto_0

    .line 263
    :catchall_0
    move-exception p0

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " failed to initialize"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NebulaXKernel:ExtensionManager"

    invoke-static {v1, p1, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    :cond_1
    :goto_0
    return-object v0

    .line 256
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized enterNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 3

    monitor-enter p0

    .line 203
    :try_start_0
    const-string v0, "NebulaXKernel:ExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterNode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 202
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exitNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 3

    monitor-enter p0

    .line 209
    :try_start_0
    const-string v0, "NebulaXKernel:ExtensionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitNode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 211
    if-eqz v0, :cond_1

    .line 212
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    .line 213
    invoke-interface {v2}, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;->onFinalized()V

    .line 214
    goto :goto_0

    .line 215
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;

    move-result-object p1

    return-object p1
.end method

.method public getAccessController()Lcom/alipay/mobile/nebulax/kernel/security/AccessController;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mAccessController:Lcom/alipay/mobile/nebulax/kernel/security/AccessController;

    return-object v0
.end method

.method public declared-synchronized getBridgeExtensionByAction(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;
    .locals 3

    monitor-enter p0

    .line 144
    if-nez p1, :cond_0

    .line 145
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->getBridgeExtensionByAction(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 148
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    iget-object v2, v0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;->getScope(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/node/Node;->getParentNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->getBridgeExtensionByAction(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 155
    :cond_1
    :try_start_2
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 156
    if-eqz p1, :cond_3

    .line 157
    iget-object p2, v0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 159
    iget-object p2, v0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 162
    :cond_2
    :try_start_3
    iget-object p2, v0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-static {p2}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object p2

    check-cast p2, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;

    .line 163
    iget-object v0, v0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    :cond_3
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 143
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBridgeExtensionByAction(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 123
    if-nez p1, :cond_0

    .line 124
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 127
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 128
    if-eqz v0, :cond_1

    .line 129
    monitor-exit p0

    return-object v0

    .line 133
    :cond_1
    :try_start_2
    iget-object v1, p1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->createExtensionInstance(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 137
    goto :goto_1

    .line 135
    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 136
    :goto_0
    :try_start_4
    const-string v1, "NebulaXKernel:ExtensionManager"

    invoke-static {v1, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v1, v0

    .line 139
    :goto_1
    monitor-exit p0

    return-object v1

    .line 121
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getExtensionByName(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    if-eqz v0, :cond_3

    .line 97
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;->getExtensionClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    invoke-interface {v2, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;->getScope(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 100
    nop

    .line 101
    if-nez p2, :cond_0

    .line 102
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mSingletonExtensionMap:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1

    goto :goto_1

    .line 104
    :cond_0
    nop

    .line 105
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/node/Node;->getParentNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_1
    if-eqz p1, :cond_2

    .line 109
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mNodeExtensionMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->getExtension(Ljava/util/Map;Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_2
    :goto_1
    return-object v1

    .line 114
    :catchall_0
    move-exception p1

    .line 115
    const-string p2, "NebulaXKernel:ExtensionManager"

    const-string v0, "getExtensionByName"

    invoke-static {p2, v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    return-object v1

    .line 94
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ExtensionRegistry not setup"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtensionByPoint(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;

    if-eqz v0, :cond_5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExtensionByPoint "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXKernel:ExtensionManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->findExtensions(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionFilterMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionFilter;

    .line 65
    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionFilter;->filter(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionSorterMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 70
    if-eqz v0, :cond_2

    .line 71
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 72
    :cond_2
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/extension/SimpleSorter;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 73
    new-instance p2, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager$1;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager$1;-><init>(Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    :cond_3
    :goto_0
    return-object p1

    .line 61
    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "ExtensionRegistry not setup"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getExtensionByPoint(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->getExtensionByPoint(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getRemoteController()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mRemoteController:Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    return-object v0
.end method

.method public setAccessControlManagement(Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mAccessController:Lcom/alipay/mobile/nebulax/kernel/security/AccessController;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/security/AccessController;->setAccessControlManagement(Lcom/alipay/mobile/nebulax/kernel/security/AccessControlManagement;)V

    .line 189
    return-void
.end method

.method public setExtensionFilter(Ljava/lang/Class;Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionFilter;",
            ")V"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionFilterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public setExtensionSorter(Ljava/lang/Class;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/DefaultExtensionManager;->mExtensionSorterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    return-void
.end method
