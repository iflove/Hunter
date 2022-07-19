.class Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;
.super Ljava/lang/Object;
.source "BridgeExtensionRegistry.java"


# instance fields
.field private final mActionMetaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mActionMethodMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;",
            ">;"
        }
    .end annotation
.end field

.field private final mBridgeExtensionClazzSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExtensionClassLoader:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMethodMap:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mBridgeExtensionClazzSet:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMetaMap:Ljava/util/Map;

    return-void
.end method

.method private checkValidate(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;",
            ">;)V"
        }
    .end annotation

    .line 129
    if-eqz p1, :cond_5

    .line 133
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 138
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 141
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    const/4 v0, 0x0

    .line 147
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mBridgeExtensionClazzSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 156
    if-eqz p1, :cond_0

    .line 159
    return-void

    .line 157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension has no method"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension has registered"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 148
    :catch_0
    move-exception p1

    .line 149
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension has no default constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension is abstract"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension is interface"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension is not BridgeExtension"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initActionMeta(Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;",
            ">;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    .line 83
    const-class v6, Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;

    .line 84
    if-nez v6, :cond_1

    .line 85
    goto/16 :goto_3

    .line 89
    :cond_1
    invoke-interface {v6}, Lcom/alipay/mobile/nebulax/kernel/annotation/ActionFilter;->value()Ljava/lang/String;

    move-result-object v6

    .line 90
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_3

    .line 91
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    .line 95
    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    .line 96
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 99
    :cond_4
    const-class v7, Lcom/alipay/mobile/nebulax/kernel/annotation/AutoCallback;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebulax/kernel/annotation/AutoCallback;

    .line 102
    const-class v9, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;

    .line 103
    if-eqz v9, :cond_5

    invoke-interface {v9}, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 104
    new-instance v10, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgePermission;

    invoke-interface {v9}, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;->value()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lcom/alipay/mobile/nebulax/kernel/annotation/UsePermission;->desc()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v9}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v9, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;

    invoke-direct {v9, v10}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/alipay/mobile/nebulax/kernel/security/Permission;)V

    .line 106
    goto :goto_1

    .line 107
    :cond_5
    new-instance v9, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgePermission;

    invoke-direct {v9, v6, v6}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v10, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;

    invoke-direct {v10, v9}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeGuard;-><init>(Lcom/alipay/mobile/nebulax/kernel/security/Permission;)V

    move-object v9, v10

    .line 112
    :goto_1
    new-instance v10, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;

    invoke-direct {v10}, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;-><init>()V

    .line 113
    iput-object v5, v10, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->actionMethod:Ljava/lang/reflect/Method;

    .line 114
    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, v10, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->isAutoCallback:Z

    .line 115
    iput-object p1, v10, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->bridgeExtensionClazz:Ljava/lang/Class;

    .line 116
    iput-object v6, v10, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->actionName:Ljava/lang/String;

    .line 117
    iput-object v9, v10, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->guard:Lcom/alipay/mobile/nebulax/kernel/security/Guard;

    .line 119
    iget-object v5, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMethodMap:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 123
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 120
    :cond_7
    new-instance p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/RegistryException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is not allow duplicate register"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/RegistryException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_8
    return-object v0

    .line 79
    :cond_9
    :goto_4
    return-object v0
.end method


# virtual methods
.method findActionMeta(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;
    .locals 3

    .line 58
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMethodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMetaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMetaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mExtensionClassLoader:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;

    iget-object v2, v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->bundleName:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->extensionClass:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ClassLoaderUtils;->loadClass(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->register(Ljava/lang/Class;)V

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMetaMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMethodMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;

    return-object p1

    .line 59
    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method register(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;)V
    .locals 3

    .line 34
    iget-object v0, p1, Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;->filter:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMetaMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMetaMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    return-void
.end method

.method register(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/alipay/mobile/nebulax/kernel/extension/bridge/BridgeExtension;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->checkValidate(Ljava/lang/Class;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->initActionMeta(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;

    .line 52
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mActionMethodMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/alipay/mobile/nebulax/kernel/extension/bridge/ActionMeta;->actionName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mBridgeExtensionClazzSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    return-void

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "action method not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setClassLoader(Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/registry/BridgeExtensionRegistry;->mExtensionClassLoader:Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionRegistry$ExtensionClassLoader;

    .line 74
    return-void
.end method
