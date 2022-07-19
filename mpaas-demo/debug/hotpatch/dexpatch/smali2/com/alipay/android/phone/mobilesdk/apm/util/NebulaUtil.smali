.class public Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;
.super Ljava/lang/Object;
.source "NebulaUtil.java"


# direct methods
.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "classOrName"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "targetObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 90
    .local v0, "clazz":Ljava/lang/Class;
    instance-of v1, p0, Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 91
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    move-object v3, v2

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v2

    .line 95
    .local v3, "className":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    .end local v3    # "className":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 100
    invoke-virtual {v3, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "activity"    # Ljava/lang/Object;

    const-string v0, "NebulaUtil"

    .line 43
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 44
    return-object v1

    .line 46
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    move-object v3, v1

    .line 52
    .local v3, "targetClazz":Ljava/lang/Class;
    const-string v4, "getCurrentUri"

    invoke-static {v2, v4, p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 53
    .local v2, "uri":Ljava/lang/Object;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get uri "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " for activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    move-object v4, v2

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 55
    .end local v2    # "uri":Ljava/lang/Object;
    .end local v3    # "targetClazz":Ljava/lang/Class;
    :catchall_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v2    # "e":Ljava/lang/Throwable;
    return-object v1
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "activityName"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 35
    return v0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 38
    const-string v1, "com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaActivity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 39
    const-string v1, "com.alipay.mobile.nebulax.integration.mpaas.activity.NebulaTransActivity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    return v0

    .line 39
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .param p0, "activity"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v2, v0

    .line 65
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v6, v1, v4

    .line 66
    .local v5, "field":Ljava/lang/reflect/Field;
    move-object v5, v6

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "H5SessionImpl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v0

    .line 69
    .local v3, "h5session":Ljava/lang/Object;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getTopPage"

    invoke-static {v1, v4, v3}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v0

    .line 70
    .local v4, "h5Page":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v6, "getUrl"

    invoke-static {v1, v6, v4}, Lcom/alipay/android/phone/mobilesdk/apm/util/NebulaUtil;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v6, v0

    .line 71
    .local v6, "currentUrl":Ljava/lang/String;
    move-object v6, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 72
    return-object v6

    .line 65
    .end local v3    # "h5session":Ljava/lang/Object;
    .end local v4    # "h5Page":Ljava/lang/Object;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "currentUrl":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 79
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    :cond_1
    goto :goto_1

    .line 77
    :catchall_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "NebulaUtil"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2
    .param p0, "activityName"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 27
    return v0

    .line 29
    :cond_0
    const-string v1, "com.alipay.mobile.nebulacore.ui.H5Activity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 30
    const-string v1, "com.alipay.mobile.nebulacore.ui.H5TransActivity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    return v0

    .line 30
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
