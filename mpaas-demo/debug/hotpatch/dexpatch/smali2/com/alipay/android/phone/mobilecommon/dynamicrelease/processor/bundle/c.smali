.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;
.super Ljava/lang/Object;
.source "BundleUpdate.java"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "DynamicRelease"

    .line 23
    const/4 v1, 0x0

    .line 25
    .local v1, "set":Ljava/util/Set;
    :try_start_0
    const-string v2, "com.alipay.mobile.quinox.bundle.BundleUpdate"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 26
    .local v4, "clazz":Ljava/lang/Class;
    const-string v5, "getUpdateBundleKeys"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v9

    invoke-static {v2, v5, v7, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    .local v3, "obj":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v2, :cond_0

    instance-of v2, v3, Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 29
    move-object v2, v3

    check-cast v2, Ljava/util/Set;

    move-object v1, v2

    goto :goto_0

    .line 31
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "BundleUpdate.getUpdateBundleKeys()="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "DynamicRelease"

    .line 40
    const/4 v1, 0x0

    .line 42
    .local v1, "set":Ljava/util/Set;
    :try_start_0
    const-string v2, "com.alipay.mobile.quinox.bundle.BundleUpdate"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 43
    .local v4, "clazz":Ljava/lang/Class;
    const-string v5, "getUpdateBundleNames"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v9

    invoke-static {v2, v5, v7, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    .local v3, "obj":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v2, :cond_0

    instance-of v2, v3, Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 46
    move-object v2, v3

    check-cast v2, Ljava/util/Set;

    move-object v1, v2

    goto :goto_0

    .line 48
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "BundleUpdate.getUpdateBundleNames()="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    .line 51
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method

.method public static c(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v0, "updateBundles":Ljava/util/Map;
    invoke-static {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/c;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 60
    .local v3, "updateBundleKeys":Ljava/util/Set;
    move-object v3, v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 62
    .local v2, "bundleKey":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Lcom/alipay/mobile/quinox/bundle/tools/BundleHelper;->keyToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "bundleName":Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/quinox/bundle/tools/BundleHelper;->keyToVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "bundleVersion":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 65
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v2    # "bundleKey":Ljava/lang/String;
    .end local v4    # "bundleName":Ljava/lang/String;
    .end local v5    # "bundleVersion":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 70
    :cond_1
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "DynamicRelease"

    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "set":Ljava/util/Set;
    :try_start_0
    const-string v2, "com.alipay.mobile.quinox.bundle.BundleUpdate"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 77
    .local v4, "clazz":Ljava/lang/Class;
    const-string v5, "getReusableBundleKeys"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v9

    invoke-static {v2, v5, v7, v6}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v3, "obj":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v2, :cond_0

    instance-of v2, v3, Ljava/util/Set;

    if-eqz v2, :cond_0

    .line 80
    move-object v2, v3

    check-cast v2, Ljava/util/Set;

    move-object v1, v2

    goto :goto_0

    .line 82
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "BundleUpdate.getReusableBundleKeys()="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1
.end method
