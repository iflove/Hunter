.class public abstract Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;
.super Ljava/lang/Object;
.source "AbstraceExtBeanFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected backupBean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected defaultBean:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mBeanMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->mBeanMap:Ljava/util/Map;

    .line 16
    iput-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->defaultBean:Ljava/lang/Object;

    .line 18
    iput-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->backupBean:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addBean(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->getBeanMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getBackupBean()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->backupBean:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 53
    return-object v0

    .line 55
    :cond_0
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->backupBean:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 57
    monitor-exit p0

    return-object v0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->newBackupBean()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->backupBean:Ljava/lang/Object;

    .line 60
    monitor-exit p0

    .line 61
    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBean(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->mBeanMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->mBeanMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 77
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getBeanMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->mBeanMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 107
    return-object v0

    .line 110
    :cond_0
    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->mBeanMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 112
    monitor-exit p0

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->mBeanMap:Ljava/util/Map;

    .line 115
    monitor-exit p0

    .line 116
    return-object v0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultBean()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->defaultBean:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->defaultBean:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-object v1

    .line 33
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->newDefaultBean()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->defaultBean:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    if-eqz v1, :cond_2

    .line 35
    :try_start_2
    monitor-exit v0

    return-object v1

    .line 41
    :cond_2
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    sget-object v2, Lcom/alipay/mobile/common/netsdkextdependapi/InnerMiscUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 39
    sget-object v2, Lcom/alipay/mobile/common/netsdkextdependapi/InnerMiscUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "[getDefaultBean] Exception"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    :cond_3
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->getBackupBean()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 42
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method protected abstract newBackupBean()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract newDefaultBean()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public removeBean(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->mBeanMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->mBeanMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setDefaultBean(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/common/netsdkextdependapi/AbstraceExtBeanFactory;->defaultBean:Ljava/lang/Object;

    .line 49
    return-void
.end method
