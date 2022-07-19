.class public Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;
.super Ljava/lang/Object;
.source "DefaultExtensionRegistry.java"

# interfaces
.implements Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry;


# static fields
.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:DefaultExtensionRegistry"


# instance fields
.field private mBridgeExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;

.field private final mClassNameScopeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExtensionClassLoader:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;

.field private final mExtensionClassRegisteredSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mExtensionMetaInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPointToExtensionClazzMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mPointToMetaInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;

    .line 35
    return-void
.end method

.method private collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation

    .line 83
    if-nez p2, :cond_0

    .line 84
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 86
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 87
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 88
    const-class v4, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_2
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 95
    :cond_3
    return-object p2
.end method

.method private putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    .line 189
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/String;Ljava/lang/Class;)V

    .line 190
    return-void
.end method

.method private putScope(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_0
    return-void
.end method


# virtual methods
.method protected createExtensionInstance(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/Extension;
    .locals 0
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

    .line 198
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    return-object p1
.end method

.method public findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;

    move-result-object p1

    return-object p1
.end method

.method public findExtensions(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    if-eqz v0, :cond_2

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    .line 103
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassLoader:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;

    iget-object v3, v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ClassLoaderUtils;->loadClass(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    monitor-enter v3

    .line 105
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    monitor-exit v3

    goto :goto_0

    .line 108
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iget-object v1, v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 110
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getExtensionClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    return-object v1

    .line 173
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    .line 175
    iget-object v2, v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    iget-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassLoader:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;

    iget-object v0, v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ClassLoaderUtils;->loadClass(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 178
    :cond_2
    goto :goto_1

    .line 179
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getScope(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->getScope(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getScope(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mClassNameScopeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method public declared-synchronized register(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;)V
    .locals 4

    monitor-enter p0

    .line 124
    :try_start_0
    const-string v0, "NebulaXKernel:DefaultExtensionRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register meta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-boolean v0, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->isLazy:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassLoader:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;

    iget-object v1, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ClassLoaderUtils;->loadClass(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    .line 129
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;->NORMAL:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    iget-object v1, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    if-ne v0, v1, :cond_3

    .line 130
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 131
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 132
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 133
    if-nez v2, :cond_1

    .line 134
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 136
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToMetaInfoMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    goto :goto_0

    :cond_2
    goto :goto_1

    .line 140
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;->BRIDGE:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    iget-object v1, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->type:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionType;

    if-ne v0, v1, :cond_4

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->register(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;)V

    .line 144
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->scope:Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/String;Ljava/lang/Class;)V

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionMetaInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(Lcom/alipay/mobile/nebulax/kernel/extension/registry/Plugin;)V
    .locals 3

    monitor-enter p0

    .line 150
    :try_start_0
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/Plugin;->getExtensionMetaInfos()Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    .line 152
    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/Plugin;->getBundleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    .line 153
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->register(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    goto :goto_0

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 39
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->register(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/node/Scope;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 44
    :try_start_0
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->register(Ljava/lang/Class;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    :try_start_2
    const-string v1, "NebulaXKernel:DefaultExtensionRegistry"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :cond_0
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    const-string p2, "NebulaXKernel:DefaultExtensionRegistry"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not valid extension"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 56
    monitor-exit p0

    return-void

    .line 59
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 61
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string p2, "NebulaXKernel:DefaultExtensionRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extension "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    .line 65
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassRegisteredSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 68
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->collectExtensionPoint(Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 71
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 72
    if-nez v2, :cond_3

    .line 73
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 75
    :cond_3
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mPointToExtensionClazzMap:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    goto :goto_0

    .line 79
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->putScope(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 80
    monitor-exit p0

    return-void

    .line 66
    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 43
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setClassLoader(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;)V
    .locals 1

    .line 193
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mExtensionClassLoader:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/DefaultExtensionRegistry;->mBridgeExtensionRegistry:Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->setClassLoader(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;)V

    .line 195
    return-void
.end method
