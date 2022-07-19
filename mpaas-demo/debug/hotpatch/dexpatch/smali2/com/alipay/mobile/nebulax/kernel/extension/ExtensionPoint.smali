.class public Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
.super Ljava/lang/Object;
.source "ExtensionPoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static sExtensionManager:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;


# instance fields
.field private invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

.field private mActionPolicyHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Action;",
            "Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;",
            ">;"
        }
    .end annotation
.end field

.field private mCurPolicy:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

.field private mDefaultValue:Ljava/lang/Object;

.field private mExtensionClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mExtensionManager:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

.field private mNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

.field private mNullable:Z

.field private mResultResolver:Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;->SYNC:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mCurPolicy:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint$1;-><init>(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;)Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public static as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Extension;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static bind(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)V
    .locals 0

    .line 56
    sput-object p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->sExtensionManager:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    .line 57
    return-void
.end method


# virtual methods
.method public actionOn(Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;",
            ")",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mCurPolicy:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    .line 70
    return-object p0
.end method

.method public create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mExtensionManager:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->sExtensionManager:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->getExtensionByPoint(Lcom/alipay/mobile/nebulax/kernel/node/Node;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    new-instance v2, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;

    new-instance v3, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mResultResolver:Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;

    new-instance v5, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;

    .line 113
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;->getRemoteController()Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;

    move-result-object v0

    new-instance v6, Lcom/alipay/mobile/nebulax/kernel/invoke/AwareExtensionInvoker;

    iget-object v7, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    new-instance v8, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;

    iget-object v9, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;

    iget-object v10, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lcom/alipay/mobile/nebulax/kernel/extension/ActionCallback;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-direct {v6, v7, v8}, Lcom/alipay/mobile/nebulax/kernel/invoke/AwareExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker$InvokeCallback;)V

    invoke-direct {v5, v0, v6}, Lcom/alipay/mobile/nebulax/kernel/invoke/RemoteExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/remote/RemoteController;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/nebulax/kernel/invoke/ResolveExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    invoke-direct {v2, v3}, Lcom/alipay/mobile/nebulax/kernel/invoke/ScheduleExtensionInvoker;-><init>(Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;)V

    .line 115
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulax/kernel/invoke/ExtensionInvoker;->attacheTargetExtensions(Ljava/util/List;)V

    .line 116
    goto :goto_2

    .line 103
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find extension for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NebulaXKernel"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mNullable:Z

    if-eqz v0, :cond_3

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->invocationHandlerDoNothing:Ljava/lang/reflect/InvocationHandler;

    .line 119
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mExtensionClazz:Ljava/lang/Class;

    aput-object v4, v1, v3

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    return-object v0
.end method

.method public defaultValue(Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mDefaultValue:Ljava/lang/Object;

    .line 65
    return-object p0
.end method

.method public extensionManager(Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;",
            ")",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mExtensionManager:Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionManager;

    .line 90
    return-object p0
.end method

.method public node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/node/Node;",
            ")",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mNode:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    .line 80
    return-object p0
.end method

.method public nullable()Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mNullable:Z

    .line 95
    return-object p0
.end method

.method public resolve(Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;",
            ")",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mResultResolver:Lcom/alipay/mobile/nebulax/kernel/extension/resolver/ResultResolver;

    .line 85
    return-object p0
.end method

.method public when(Lcom/alipay/mobile/nebulax/kernel/extension/Action;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulax/kernel/extension/Action;",
            ")",
            "Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint<",
            "TT;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mActionPolicyHashMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->mCurPolicy:Lcom/alipay/mobile/nebulax/kernel/annotation/ThreadType$Policy;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-object p0
.end method
