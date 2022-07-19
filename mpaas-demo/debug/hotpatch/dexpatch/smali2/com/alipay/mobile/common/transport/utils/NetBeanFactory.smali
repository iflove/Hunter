.class public Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;
.super Ljava/lang/Object;
.source "NetBeanFactory.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearAllBean()V
    .locals 1

    .line 41
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 42
    return-void
.end method

.method public static final getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "tClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 18
    .local v2, "object":Ljava/lang/Object;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 19
    return-object v2

    .line 22
    :cond_0
    monitor-enter p0

    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v1

    .line 24
    .local v3, "o1":Ljava/lang/Object;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v3

    .line 28
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 29
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    move-object v1, v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .line 31
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    nop

    .line 35
    :try_start_2
    monitor-exit p0

    return-object v3

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "object":Ljava/lang/Object;
    .end local p0    # "tClass":Ljava/lang/Class;
    throw v1

    .line 36
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "o1":Ljava/lang/Object;
    .restart local v2    # "object":Ljava/lang/Object;
    .restart local p0    # "tClass":Ljava/lang/Class;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public static final getObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/NetBeanFactory;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 47
    .local v2, "o":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 48
    return-object v2

    .line 52
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1. BEAN_MAP.get exception. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetBeanFactory"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
