.class public Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;
.super Ljava/lang/Object;
.source "H5ParamHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;,
        Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ParamHolder"

.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->a:Ljava/util/Map;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addPageParam(Ljava/lang/String;)V
    .locals 4
    .param p0, "pageIndex"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;

    monitor-enter v0

    .line 28
    :try_start_0
    const-string v1, "H5ParamHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addPageParam ConcurrentHashMap:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;-><init>(B)V

    .line 30
    .local v1, "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    sget-object v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    return-void

    .line 27
    .end local v1    # "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    .end local p0    # "pageIndex":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized deliveryPageParam(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "pageIndex"    # Ljava/lang/String;
    .param p1, "bundle"    # Landroid/os/Bundle;

    const-class v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;

    monitor-enter v0

    .line 41
    :try_start_0
    const-string v1, "package_prepare"

    const-string v2, "H5ParamHolder.deliveryPageParam()"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "true"

    const-string v3, "enablePolyfillWorker"

    .line 43
    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-class v1, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;

    .line 45
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 46
    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;->onPageParamReady(Landroid/os/Bundle;)V

    .line 50
    .end local v2    # "provider":Lcom/alipay/mobile/nebula/provider/TinyWebWorkerProvider;
    :cond_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;

    .line 51
    .local v2, "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 52
    const-string v1, "H5ParamHolder"

    const-string v3, "\uff01\uff01\uff01 pageParams == null"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit v0

    return-void

    .line 56
    :cond_1
    :try_start_1
    iget-object v1, v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->listener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    if-eqz v1, :cond_2

    .line 57
    const-string v1, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deliveryPageParam pageParams.listener!=null "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v1, v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->listener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;->onPageParam(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    .line 65
    :cond_2
    :try_start_2
    iput-object p1, v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->bundle:Landroid/os/Bundle;

    .line 66
    const-string v1, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deliveryPageParam pageParams.listener==null "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    monitor-exit v0

    return-void

    .line 40
    .end local v2    # "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    .end local p0    # "pageIndex":Ljava/lang/String;
    .end local p1    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized hasPageParam(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pageIndex"    # Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 35
    .local v1, "result":Z
    const-string v2, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " hasPageParam "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return v1

    .line 33
    .end local v1    # "result":Z
    .end local p0    # "pageIndex":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized retrievePageParam(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;)V
    .locals 5
    .param p0, "pageIndex"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    const-class v0, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;

    .line 78
    .local v1, "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    const-string v2, "H5ParamHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "retrievePageParam "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " pageParams:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->bundle:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 85
    iput-object p1, v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->listener:Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;

    .line 89
    const-string v2, "H5ParamHolder"

    const-string v3, "pageParams.bundle==null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 95
    :cond_1
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v2, v1, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;->bundle:Landroid/os/Bundle;

    invoke-interface {p1, v2}, Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;->onPageParam(Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    .line 81
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 75
    .end local v1    # "pageParams":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParams;
    .end local p0    # "pageIndex":Ljava/lang/String;
    .end local p1    # "listener":Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
