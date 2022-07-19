.class public Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;
.super Ljava/lang/Object;
.source "H5NebulaCommonManager.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonManager;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->a:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public declared-synchronized getNebulaAppCallbackList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 50
    const-string v0, ""

    .line 51
    .local v0, "log":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;

    .line 52
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;->getAppIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 53
    .local v3, "appId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 54
    .end local v3    # "appId":Ljava/lang/String;
    goto :goto_1

    .line 55
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    const-string v1, "H5NebulaCommonManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNebulaAppCallbackList "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .end local v0    # "log":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->a:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerNebulaCommonInfo(Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;)V
    .locals 5
    .param p1, "nebulaCommonInfo"    # Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;

    monitor-enter p0

    .line 29
    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 30
    const-string v0, ""

    .line 31
    .local v0, "log":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;->getAppIdList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, "appId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 33
    .end local v2    # "appId":Ljava/lang/String;
    goto :goto_0

    .line 34
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;
    :cond_0
    const-string v1, "H5NebulaCommonManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerNebulaCommonInfo "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .end local v0    # "log":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 28
    .end local p1    # "nebulaCommonInfo":Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterNebulaCommonInfo(Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;)V
    .locals 1
    .param p1, "nebulaCommonInfo"    # Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 41
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/manager/H5NebulaCommonManager;
    .end local p1    # "nebulaCommonInfo":Lcom/alipay/mobile/nebula/appcenter/common/NebulaCommonInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
