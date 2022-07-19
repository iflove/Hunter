.class public Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;
.super Ljava/lang/Object;
.source "LifecycleCallback.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 20
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getDetectedEntities()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 22
    .local v1, "entities":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "clazz":Ljava/lang/String;
    const/4 v2, 0x0

    .line 27
    .local v2, "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    .line 30
    move-object v2, v3

    if-nez v3, :cond_0

    .line 31
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    invoke-direct {v3, v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 32
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "entities":Ljava/util/Map;
    .end local v2    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    .end local p1    # "activity":Landroid/app/Activity;
    .end local p2    # "bundle":Landroid/os/Bundle;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "entities":Ljava/util/Map;
    .restart local v2    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    .restart local p1    # "activity":Landroid/app/Activity;
    .restart local p2    # "bundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    .line 37
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LifecycleCallback"

    const-string/jumbo v6, "onActivityCreated"

    invoke-interface {v4, v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_0
    if-nez v2, :cond_1

    .line 41
    return-void

    .line 44
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c()V

    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LifecycleCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onActivityCreated: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v2    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    :cond_2
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .line 53
    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getActivityDestroyEntities()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 54
    .local v1, "activityDestroyEntities":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v1    # "activityDestroyEntities":Ljava/util/Map;
    :cond_0
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 58
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "LifecycleCallback"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getInstance()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->getDetectedEntities()Ljava/util/Map;

    move-result-object v0

    .line 64
    .local v1, "entities":Ljava/util/Map;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "clazz":Ljava/lang/String;
    const/4 v2, 0x0

    .line 69
    .local v2, "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 70
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    .line 72
    move-object v2, v3

    if-nez v3, :cond_1

    .line 73
    new-instance v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    invoke-direct {v3, v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 74
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LifecycleCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onActivityDestroyed: no mapping "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "entities":Ljava/util/Map;
    .end local v2    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    .end local p1    # "activity":Landroid/app/Activity;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 81
    .restart local v0    # "clazz":Ljava/lang/String;
    .restart local v1    # "entities":Ljava/util/Map;
    .restart local v2    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catchall_2
    move-exception v3

    .line 82
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "LifecycleCallback"

    const-string/jumbo v6, "onActivityDestroyed"

    invoke-interface {v4, v5, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    if-nez v2, :cond_2

    .line 86
    return-void

    .line 89
    :cond_2
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d()V

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "LifecycleCallback"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onActivityDestroyed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v0    # "clazz":Ljava/lang/String;
    .end local v2    # "entity":Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
    :cond_3
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 112
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 108
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "state"    # Landroid/os/Bundle;

    .line 104
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 100
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 96
    return-void
.end method
