.class public Lcom/alipay/mobile/nebulax/engine/common/a/a;
.super Ljava/lang/Object;
.source "EngineProxyStack.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/nebulax/engine/common/a/a;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "NebulaXEngine.EngineProxyStack"

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->c:Ljava/util/Map;

    .line 23
    return-void
.end method

.method public static a()Lcom/alipay/mobile/nebulax/engine/common/a/a;
    .locals 1

    .line 26
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->b:Lcom/alipay/mobile/nebulax/engine/common/a/a;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/common/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/common/a/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->b:Lcom/alipay/mobile/nebulax/engine/common/a/a;

    .line 29
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->b:Lcom/alipay/mobile/nebulax/engine/common/a/a;

    return-object v0
.end method

.method private b(Ljava/lang/Class;)Ljava/util/Stack;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;",
            ">;>;"
        }
    .end annotation

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 40
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    monitor-exit p0

    return-object v0

    .line 43
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 2

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->b(Ljava/lang/Class;)Ljava/util/Stack;

    move-result-object p1

    .line 104
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 106
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    monitor-exit p0

    return-object p1

    .line 107
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 108
    goto :goto_0

    .line 113
    :cond_2
    monitor-exit p0

    .line 114
    const/4 p1, 0x0

    return-object p1

    .line 113
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;
    .locals 3

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->b(Ljava/lang/Class;)Ljava/util/Stack;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    monitor-exit p0

    return-object v1

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 92
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    invoke-interface {v2}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;

    monitor-exit p0

    return-object p1

    .line 95
    :cond_1
    goto :goto_0

    .line 96
    :cond_2
    monitor-exit p0

    return-object v1

    .line 97
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;)V
    .locals 3

    .line 48
    if-nez p1, :cond_0

    .line 49
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a:Ljava/lang/String;

    const-string v0, "push  empty engineProxy"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push proxy appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->b(Ljava/lang/Class;)Ljava/util/Stack;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    monitor-exit p0

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;)V
    .locals 5

    .line 60
    if-nez p1, :cond_0

    .line 61
    sget-object p1, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a:Ljava/lang/String;

    const-string v0, "reomve  empty engineProxy"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/common/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove proxy appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , obj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/engine/common/a/a;->b(Ljava/lang/Class;)Ljava/util/Stack;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    monitor-exit p0

    return-void

    .line 70
    :cond_1
    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 72
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    .line 73
    move-object v1, v3

    .line 75
    :cond_2
    goto :goto_0

    .line 76
    :cond_3
    if-eqz v1, :cond_4

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 79
    :cond_4
    monitor-exit p0

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
