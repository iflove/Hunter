.class public Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;
.super Ljava/lang/Object;
.source "TransportInterceptorManager.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 87
    return-object v0

    .line 89
    :cond_0
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 91
    monitor-exit p0

    return-object v0

    .line 93
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->b:Ljava/util/List;

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;
    .locals 2

    .line 25
    sget-object v0, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->a:Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;

    if-eqz v0, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->a:Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;

    if-eqz v1, :cond_1

    .line 30
    monitor-exit v0

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->a:Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;

    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addInterceptor(Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;)V
    .locals 2
    .param p1, "transportInterceptor"    # Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;

    monitor-enter p0

    .line 38
    if-nez p1, :cond_0

    .line 39
    :try_start_0
    const-string v0, "TransportInterceptorManager"

    const-string v1, "addInterceptor.   Illegal argument, transportInterceptor maybe null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 42
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v0, "TransportInterceptorManager"

    const-string v1, "addInterceptor.   Illegal argument, transportInterceptor already exists."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "transportInterceptor":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPreTransportInterceptor(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;

    .line 70
    .local v1, "transportInterceptor":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    .local v2, "startTime":J
    :try_start_1
    invoke-interface {v1, p1, p2}, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;->preRequestInterceptor(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    const-string v4, "TransportInterceptorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "preRequestInterceptor finish. obj = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], cost time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 80
    goto :goto_0

    .line 73
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;
    :catchall_0
    move-exception v4

    .line 74
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "TransportInterceptorManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "onPreTransportInterceptor. interceptor="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", exception message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    instance-of v5, v4, Lcom/alipay/mobile/common/transport/http/HttpException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v5, :cond_1

    .line 79
    .end local v4    # "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "TransportInterceptorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "preRequestInterceptor finish. obj = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], cost time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 80
    goto/16 :goto_0

    .line 76
    .restart local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_5
    move-object v0, v4

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    .end local v1    # "transportInterceptor":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;
    .end local v2    # "startTime":J
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "extMap":Ljava/util/Map;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    .end local v4    # "e":Ljava/lang/Throwable;
    .restart local v1    # "transportInterceptor":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;
    .restart local v2    # "startTime":J
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "extMap":Ljava/util/Map;
    :catchall_1
    move-exception v0

    :try_start_6
    const-string v4, "TransportInterceptorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "preRequestInterceptor finish. obj = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], cost time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 82
    .end local v1    # "transportInterceptor":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;
    .end local v2    # "startTime":J
    :cond_2
    monitor-exit p0

    return-void

    .line 67
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 65
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "extMap":Ljava/util/Map;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeInterceptor(Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;)V
    .locals 1
    .param p1, "transportInterceptor"    # Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    if-nez p1, :cond_1

    .line 54
    monitor-exit p0

    return-void

    .line 56
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 51
    .end local p0    # "this":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorManager;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    .end local p1    # "transportInterceptor":Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
